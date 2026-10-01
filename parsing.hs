// SYNTAX harveyscript

class ParsingStream
{
    String text;
    Integer index;

    constructor(String text, Integer index)
    {
        this.text = text;
        this.index = index;
    }

    constructor(String text)
    {
        constructor(text, 0);
    }

    function getCharsLeft() -> Integer
    {
        return len(text) - index;
    }

    function read(Integer amount) -> String
    {
        String toReturn = "";
        for (Integer i = 0; i < amount && getCharsLeft() > 0; i++)
        {
            toReturn += text[index+i];
        }
        return toReturn;
    }

    function seek(Integer amount)
    {
        index++;
    }
}