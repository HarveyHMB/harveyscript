A function with a return value:
```harveyscript
function foo(String bar, Integer baz) -> Float
{
    return len(bar) / baz;
}
```
A function without a return value:
```harveyscript
function foo(String bar, Integer baz)
{
    print(bar * baz);
}
```
A class
```harveyscript
class Foo
{
    String a;
    
    constructor(String a)
    {
        this.a = a;
    }
    
    function repeat(Integer amount) -> String
    {
        String toReturn = "";
        for (Integer i = 0; i < amount; i++)
        {
            toReturn += a;
        }
        return toReturn;
    }
}
```
```harveyscript
// Usage
Foo foo = new Foo("fw", 0);
print(foo.repeat(4));
```
Interfaces
```harveyscript
class Foo implements Bar
{
    String a;
    Integer b;
    
    constructor(String a, Integer b)
    {
        this.a = a;
        this.b = b;
    } 
    
    constructor(String a)
    {
        constructor(a, 0);
    }
    
    function readAndSeek(Integer amount) -> String
    {
        String toReturn = a.substring(b, b+amount);
        b += amount;
        return toReturn;
    }
}
```
```harveyscript
interface Bar
{
    function readAndSeek(Integer amount) -> String;
}
```
```harveyscript
// Usage
function baz(Bar bar) -> String
{
    return bar.readAndSeek(3);
}
```
A loadable entrypoint (i need to think of a better name if you know one pls dm me on discord)
```harveyscript
enterface Bar
{
    function readAndSeek(Integer amount) -> String;
}
```