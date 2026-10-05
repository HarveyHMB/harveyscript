// SYNTAX harveyscript

from entrypoints import CompileTargetEntrypoint

enterable class CompileTargetEntrypoint implements CompileTargetEntrypoint
{
    function getId() -> String
    {
        return "python";
    }

    function getName() -> String
    {
        return "Python";
    }
}