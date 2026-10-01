// SYNTAX harveyscript

from loading import Library

functype getCompileTargetFunction() -> CompileTarget;

function getCompileTarget(String modulePath) -> CompileTarget
{
    Library lib = Library.load(modulePath);
    getCompileTargetFunction func = lib.get("getTarget");
    return func();
}

interface CompileTarget
{
    function getLanguage() -> String;
}