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
A typed function
```harveyscript
function <T implements Bar> foo(T bar, Integer baz) -> String
{
    return bar.readAndSeek(baz);
}
```
A function with type parameters
```harveyscript
function foo<T>(String baz) -> T
{
    return (T) components[baz];
}
```
```harveyscript
// Usage
Foo myFoo = foo<Foo>("yay");
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
A loadable class
```harveyscript
interface Bar
{
    function getName() -> String;
    function getDescription() -> String;
}
```
```harveyscript
from entrypoints import Bar

enterable class MyItem implements Bar // enterable is required to make the class loadable
{
    function getName() -> String
    {
        return "Skin Case"
    }

    function getDescription() -> String
    {
        return "Gambling for kids!"
    }
}
```
```harveyscript
// Usage
import utils

function loadAllModules() -> List<Bar>
{
    List<Bar> toReturn = [];
    foreach (String filePath : utils.filesIn("./modules"))
    {
        Library lib = Library.load(filePath);
        if (lib == null)
        {
            print(f"Module at \"{filePath}\" failed to load!");
            continue;
        }
        Bar loaded = lib.get<Bar>("entrypoints.BarEntrypoint"); // this input can be dynamic
        if (loaded == null)
        {
            print(f"Entrypoint from module at \"{filePath}\" failed to load!");
            continue;
        }
        toReturn.append(loaded);
    }
    return toReturn;
}
```