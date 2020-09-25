SendSGBPacket:
	ld a, [hl]
	and $7
	ret z
	ld b, a
.loop2
	push bc
	ld a, 1
	ld [wInputFlags], a
	xor a
	ldh [rJOYP], a
	ld a, $30
	ldh [rJOYP], a
	ld b, $10
.nextByte
	ld e, $8
	ld a, [hli]
	ld d, a
.nextBit0
	bit 0, d
	ld a, $10
	jr nz, .next0
	ld a, $20
.next0
	ldh [rJOYP], a
	ld a, $30
	ldh [rJOYP], a
	rr d
	dec e
	jr nz, .nextBit0
	dec b
	jr nz, .nextByte
	ld a, $20
	ldh [rJOYP], a
	ld a, $30
	ldh [rJOYP], a
	xor a
	ld [wInputFlags], a
	call SGBDelayCycles
	pop bc
	dec b
	ret z
	jr .loop2

SGBDelayCycles:
	ld de, 28000
.wait
	nop ; no-optimize nops
	nop ; no-optimize nops
	nop ; no-optimize nops
	dec de
	ld a, d
	or e
	jr nz, .wait
	ret

InitSGBBorder::
	ldh a, [hCGB]
	and a
	ret nz

	ld a, BANK(wDecompressScratch)
	push af
	ldh [rSVBK], a

	ld hl, SGBBorderGFX
	ld b, BANK(SGBBorderGFX)
	call FarDecompressAtB_D000

	di
	ld hl, MaskEnFreezePacket
	call SendSGBPacket
	ei

	ld a, TRUE
	ld [wCopyingSGBTileData], a
	ld de, ChrTrnPacket
	ld hl, wDecompressScratch
	call CopyGfxToSuperNintendoVRAM

	xor a
	ld [wCopyingSGBTileData], a
	ld de, PctTrnPacket
	ld hl, SGBBorderMap
	call CopyGfxToSuperNintendoVRAM

	xor a
	ld [wCopyingSGBTileData], a
	ld de, PalTrnPacket
	ld hl, SGBBorderMap ; not SGBBorderPals
	call CopyGfxToSuperNintendoVRAM

	ld hl, vTiles0
	ld bc, VRAM_End - vTiles0
	xor a
	rst ByteFill

	ld hl, MaskEnCancelPacket
	call SendSGBPacket

	pop af
	ldh [rSVBK], a
	ret

CopyGfxToSuperNintendoVRAM:
	di
	push de
	call DisableLCD
	ld a, $e4
	ldh [rBGP], a
	ld de, vTiles1
	ld a, [wCopyingSGBTileData]
	and a
	jr z, .notCopyingTileData
	call CopySGBBorderTiles
	jr .next
.notCopyingTileData
	ld bc, $1000
.copyData
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, .copyData
.next
	ld hl, vBGMap0
	ld de, $c
	ld a, $80
	ld c, $d
.loop
	ld b, $14
.innerLoop
	ld [hli], a
	inc a
	dec b
	jr nz, .innerLoop
	add hl, de
	dec c
	jr nz, .loop
	ld a, $e3
	ldh [rLCDC], a ; enables LCD
	pop hl
	call SendSGBPacket
	xor a
	ldh [rBGP], a
	ei
	ret

CopySGBBorderTiles:
; SGB tile data is stored in a 4BPP planar format.
; Each tile is 32 bytes. The first 16 bytes contain bit planes 1 and 2, while
; the second 16 bytes contain bit planes 3 and 4.
; This function converts 2BPP planar data into this format by mapping
; 2BPP colors 0-3 to 4BPP colors 0-3. 4BPP colors 4-15 are not used.
	ld b, 128
.tileLoop
; Copy bit planes 1 and 2 of the tile data.
	ld c, 16
.copyLoop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .copyLoop
; Zero bit planes 3 and 4.
	ld c, 16
	xor a
.zeroLoop
	ld [de], a
	inc de
	dec c
	jr nz, .zeroLoop
	dec b
	jr nz, .tileLoop
	ret

MaskEnFreezePacket:
	db $b9, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
MaskEnCancelPacket:
	db $b9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

PalTrnPacket:
	db $59, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
ChrTrnPacket:
	db $99, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
PctTrnPacket:
	db $a1, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SGBBorderMap:
INCBIN "gfx/sgb/sgb_border.bin"

SGBBorderPals:
INCLUDE "gfx/sgb/sgb_border.pal"

SGBBorderGFX:
INCBIN "gfx/sgb/sgb_border.2bpp.lz"
