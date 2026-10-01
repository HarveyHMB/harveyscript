// SYNTAX harveyscript

from loading import Library

functype getLanguageProviderFunction() -> LanguageProvider;

function getLanguageProvider(String modulePath) -> LanguageProvider
{
    Library lib = Library.load(modulePath);
    getLanguageProviderFunction func = lib.get("getLanguageProvider");
    return func();
}

interface LanguageProvider
{

}