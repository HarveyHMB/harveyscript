// SYNTAX harveyscript

from entrypoints import CompileTargetEntrypoint

entrypoint CompileTargetEntrypoint
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