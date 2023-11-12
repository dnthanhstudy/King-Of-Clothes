﻿/*
 Copyright (c) 2003-2023, CKSource Holding sp. z o.o. All rights reserved.
 For licensing, see LICENSE.md or https://ckeditor.com/legal/ckeditor-oss-license
*/
CKEDITOR.plugins.setLang("a11yhelp", "cs", {
    title: "Instrukce pro přístupnost",
    contents: "Obsah nápovědy. Pro uzavření tohoto dialogu stiskněte klávesu ESC.",
    legend: [{
        name: "Obecné",
        items: [{
            name: "Panel nástrojů editoru",
            legend: "Stiskněte ${toolbarFocus} k procházení panelu nástrojů. K přechodu na další nebo předchozí skupinu použijte TAB nebo SHIFT+TAB. Pro přechod na další nebo předchozí tlačítko panelu nástrojů použijte ŠIPKA VPRAVO nebo ŠIPKA VLEVO. Stisknutím mezerníku nebo klávesy ENTER tlačítko aktivujete. Po aktivaci tlačítka se fokus přesune zpět do editační oblasti."
        },
            {
                name: "Dialogové okno editoru",
                legend: "Uvnitř dialogového okna stiskněte TAB pro přesunutí na další prvek okna, stiskněte SHIFT+TAB pro přesun na předchozí prvek okna, stiskněte ENTER pro odeslání dialogu, stiskněte ESC pro jeho zrušení. Pro dialogová okna, která mají mnoho karet stiskněte ALT+F10 pro zaměření seznamu karet, nebo TAB, pro posun podle pořadí karet.Při zaměření seznamu karet se můžete jimi posouvat pomocí ŠIPKY VPRAVO a VLEVO."
            }, {
                name: "Kontextové menu editoru",
                legend: "Stiskněte ${contextMenu} nebo klávesu APPLICATION k otevření kontextového menu. Pak se přesuňte na další možnost menu pomocí TAB nebo ŠIPKY DOLŮ. Přesuňte se na předchozí možnost pomocí  SHIFT+TAB nebo ŠIPKY NAHORU. Stiskněte MEZERNÍK nebo ENTER pro zvolení možnosti menu. Podmenu současné možnosti otevřete pomocí MEZERNÍKU nebo ENTER či ŠIPKY DOLEVA. Kontextové menu uzavřete stiskem ESC."
            },
            {
                name: "Rámeček seznamu editoru",
                legend: "Uvnitř rámečku seznamu se přesunete na další položku menu pomocí TAB nebo ŠIPKA DOLŮ. Na předchozí položku se přesunete SHIFT+TAB nebo ŠIPKA NAHORU. Stiskněte MEZERNÍK nebo ENTER pro zvolení možnosti seznamu. Stiskněte ESC pro uzavření seznamu."
            }, {
                name: "Lišta cesty prvku v editoru",
                legend: "Stiskněte ${elementsPathFocus} pro procházení lišty cesty prvku. Na další tlačítko prvku se přesunete pomocí TAB nebo ŠIPKA VPRAVO. Na předchozí tlačítko se přesunete pomocí SHIFT+TAB nebo ŠIPKA VLEVO. Stiskněte MEZERNÍK nebo ENTER pro vybrání prvku v editoru."
            }]
    },
        {
            name: "Příkazy",
            items: [{name: " Příkaz Zpět", legend: "Stiskněte ${undo}"}, {
                name: " Příkaz Znovu",
                legend: "Stiskněte ${redo}"
            }, {name: " Příkaz Tučné", legend: "Stiskněte ${bold}"}, {
                name: " Příkaz Kurzíva",
                legend: "Stiskněte ${italic}"
            }, {name: " Příkaz Podtržení", legend: "Stiskněte ${underline}"}, {
                name: " Příkaz Odkaz",
                legend: "Stiskněte ${link}"
            }, {
                name: " Příkaz Skrýt panel nástrojů",
                legend: "Stiskněte ${toolbarCollapse}"
            }, {
                name: "Příkaz pro přístup k předchozímu prostoru zaměření",
                legend: "Stiskněte ${accessPreviousSpace} pro přístup k nejbližšímu nedosažitelnému prostoru zaměření před stříškou, například: dva přilehlé prvky HR. Pro dosažení vzdálených prostorů zaměření tuto kombinaci kláves opakujte."
            },
                {
                    name: "Příkaz pro přístup k dalšímu prostoru zaměření",
                    legend: "Stiskněte ${accessNextSpace} pro přístup k nejbližšímu nedosažitelnému prostoru zaměření po stříšce, například: dva přilehlé prvky HR. Pro dosažení vzdálených prostorů zaměření tuto kombinaci kláves opakujte."
                }, {name: " Nápověda přístupnosti", legend: "Stiskněte ${a11yHelp}"}, {
                    name: "Vložit jako čistý text",
                    legend: "Stiskněte ${pastetext}",
                    legendEdge: "Stiskněte ${pastetext} a pak ${paste}"
                }]
        }],
    tab: "Tabulátor",
    pause: "Pauza",
    capslock: "Caps lock",
    escape: "Escape",
    pageUp: "Stránka nahoru",
    pageDown: "Stránka dolů",
    leftArrow: "Šipka vlevo",
    upArrow: "Šipka nahoru",
    rightArrow: "Šipka vpravo",
    downArrow: "Šipka dolů",
    insert: "Vložit",
    leftWindowKey: "Levá klávesa Windows",
    rightWindowKey: "Pravá klávesa Windows",
    selectKey: "Vyberte klávesu",
    numpad0: "Numerická klávesa 0",
    numpad1: "Numerická klávesa 1",
    numpad2: "Numerická klávesa 2",
    numpad3: "Numerická klávesa 3",
    numpad4: "Numerická klávesa 4",
    numpad5: "Numerická klávesa 5",
    numpad6: "Numerická klávesa 6",
    numpad7: "Numerická klávesa 7",
    numpad8: "Numerická klávesa 8",
    numpad9: "Numerická klávesa 9",
    multiply: "Numerická klávesa násobení",
    add: "Přidat",
    subtract: "Numerická klávesa odečítání",
    decimalPoint: "Desetinná tečka",
    divide: "Numerická klávesa dělení",
    f1: "F1",
    f2: "F2",
    f3: "F3",
    f4: "F4",
    f5: "F5",
    f6: "F6",
    f7: "F7",
    f8: "F8",
    f9: "F9",
    f10: "F10",
    f11: "F11",
    f12: "F12",
    numLock: "Num lock",
    scrollLock: "Scroll lock",
    semiColon: "Středník",
    equalSign: "Rovnítko",
    comma: "Čárka",
    dash: "Pomlčka",
    period: "Tečka",
    forwardSlash: "Lomítko",
    graveAccent: "Přízvuk",
    openBracket: "Otevřená hranatá závorka",
    backSlash: "Obrácené lomítko",
    closeBracket: "Uzavřená hranatá závorka",
    singleQuote: "Jednoduchá uvozovka"
});