// SYNTAX harveyscript

from loading import Library

functype getSyntaxProvidersFunction() -> SyntaxProvider;

function getSyntaxProvider(String modulePath) -> SyntaxProvider
{
    Library lib = Library.load(modulePath);
    getSyntaxProvidersFunction func = lib.get("getSyntaxProvider");
    return func();
}

interface SyntaxProvider
{

}