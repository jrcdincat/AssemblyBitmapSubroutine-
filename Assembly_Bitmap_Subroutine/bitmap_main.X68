*-----------------------------------------------------------
* Title      : Bitmap Main file
* Written by : Jonathan Conrad
* Date       : 9/25/2022
* Description: Runs bitmap subroutine to draw 24bit or 32bit 
* bitmaps in bitmap_subroutine.x68
* For bitmaps without a color palette.
*----------------------------------------------------------- 
PARAMETER_WIDTH_OF_CHUNK        EQU 50 
PARAMETER_HEIGHT_OF_CHUNK       EQU 100
PARAMETER_CHUNK_TOP_LEFT_X      EQU 50
PARAMETER_CHUNK_TOP_LEFT_Y      EQU 0
PARAMETER_DISPLAY_TOP_LEFT_X    EQU 100
PARAMETER_DISPLAY_TOP_LEFT_Y    EQU 200 

    ORG $200 
    INCLUDE 'bitmap_subroutine.x68'
    
START ORG    $1000   
    move.l #PARAMETER_WIDTH_OF_CHUNK,-(sp)
    move.l #PARAMETER_HEIGHT_OF_CHUNK,-(sp)
    move.l #PARAMETER_CHUNK_TOP_LEFT_X,-(sp)
    move.l #PARAMETER_CHUNK_TOP_LEFT_Y,-(sp)
    move.l #PARAMETER_DISPLAY_TOP_LEFT_X,-(sp)
    move.l #PARAMETER_DISPLAY_TOP_LEFT_Y,-(sp) 
    jsr RunBitmapSubroutine
    STOP #$2000
    END    START



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
