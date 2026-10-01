// SYNTAX harveyscript

from entrypoints import CompileTargetEntrypoint

entrypoint CompileTargetEntrypoint
{
    function getName() -> String
    {
        return "python";
    }
}