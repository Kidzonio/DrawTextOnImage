function dxDrawTextOnImage (text, absX, absY, width, height, imagePath, textScale, font, alignX, alignY, color, postGUI)
    assert(type(text) == 'string', "Bad argument @ dxDrawTextOnImage at argument 1, expect string got "..type(text));
    assert(type(absX) == 'number', "Bad argument @ dxDrawTextOnImage at argument 2, expect number got "..type(absX));
    assert(type(absY) == 'number', "Bad argument @ dxDrawTextOnImage at argument 3, expect number got "..type(absY));
    assert(type(width) == 'number', "Bad argument @ dxDrawTextOnImage at argument 4, expect number got "..type(width));
    assert(type(height) == 'number', "Bad argument @ dxDrawTextOnImage at argument 5, expect number got "..type(height));
    assert(type(imagePath) == 'string', "Bad argument @ dxDrawTextOnImage at argument 6, expect string got "..type(imagePath));

    textScale = textScale or 1.0;
    font = font or 'default';
    alignX = alignX or 'center';
    alignY = alignY or 'center';
    color = color or {};
    color.image = color.image or tocolor(255, 255, 255, 255);
    color.text = color.text or tocolor(0, 0, 0, 255);
    postGUI = postGUI or false;

    dxDrawImage(absX, absY, width, height, imagePath, 0, 0, 0, color.image, postGUI);
    dxDrawText(text, absX, absY, width, height, color.text, textScale, font, alignX, alignY, false, false, postGUI);
    return true;
end

-- Example

addEventHandler('onClientRender', root, function ()
    dxDrawTextOnImage('Text Example', 300, 300, 300, 300, 'Image.png', 2);
end)