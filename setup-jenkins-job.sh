Started by user ha:////4J/llF6UU4eoUJNyH5aZ8C3hS5wVaIVt9pKQcJA+tl1ZAAAAlx+LCAAAAAAAAP9b85aBtbiIQTGjNKU4P08vOT+vOD8nVc83PyU1x6OyILUoJzMv2y+/JJUBAhiZGBgqihhk0NSjKDWzXb3RdlLBUSYGJk8GtpzUvPSSDB8G5tKinBIGIZ+sxLJE/ZzEvHT94JKizLx0a6BxUmjGOUNodHsLgAy2EgZu/dLi1CL9xJTczDwA9svhPMAAAAA=Dipjoy
org.codehaus.groovy.control.MultipleCompilationErrorsException: startup failed:
WorkflowScript: 33: unexpected char: '\' @ line 33, column 18.
       WORKDIR = "C:\Users\abc\Downloads\ecommerce-platform\ecommerce-platform"
                    ^

1 error

        at org.codehaus.groovy.control.ErrorCollector.failIfErrors(ErrorCollector.java:309)
        at org.codehaus.groovy.control.ErrorCollector.addFatalError(ErrorCollector.java:149)
        at org.codehaus.groovy.control.ErrorCollector.addError(ErrorCollector.java:119)
        at org.codehaus.groovy.control.ErrorCollector.addError(ErrorCollector.java:131)
        at org.codehaus.groovy.control.SourceUnit.addError(SourceUnit.java:349)
        at org.codehaus.groovy.antlr.AntlrParserPlugin.transformCSTIntoAST(AntlrParserPlugin.java:220)
        at org.codehaus.groovy.antlr.AntlrParserPlugin.parseCST(AntlrParserPlugin.java:191)
        at org.codehaus.groovy.control.SourceUnit.parse(SourceUnit.java:233)
        at org.codehaus.groovy.control.CompilationUnit$1.call(CompilationUnit.java:189)
        at org.codehaus.groovy.control.CompilationUnit.applyToSourceUnits(CompilationUnit.java:966)
        at org.codehaus.groovy.control.CompilationUnit.doPhaseOperation(CompilationUnit.java:626)
        at org.codehaus.groovy.control.CompilationUnit.processPhaseOperations(CompilationUnit.java:602)
        at org.codehaus.groovy.control.CompilationUnit.compile(CompilationUnit.java:579)
        at groovy.lang.GroovyClassLoader.doParseClass(GroovyClassLoader.java:323)
        at groovy.lang.GroovyClassLoader.parseClass(GroovyClassLoader.java:293)
        at PluginClassLoader for script-security//org.jenkinsci.plugins.scriptsecurity.sandbox.groovy.GroovySandbox$Scope.parse(GroovySandbox.java:162)
        at PluginClassLoader for workflow-cps//org.jenkinsci.plugins.workflow.cps.CpsGroovyShell.doParse(CpsGroovyShell.java:202)
        at PluginClassLoader for workflow-cps//org.jenkinsci.plugins.workflow.cps.CpsGroovyShell.reparse(CpsGroovyShell.java:186)
        at PluginClassLoader for workflow-cps//org.jenkinsci.plugins.workflow.cps.CpsFlowExecution.parseScript(CpsFlowExecution.java:670)
        at PluginClassLoader for workflow-cps//org.jenkinsci.plugins.workflow.cps.CpsFlowExecution.start(CpsFlowExecution.java:616)
        at PluginClassLoader for workflow-job//org.jenkinsci.plugins.workflow.job.WorkflowRun.run(WorkflowRun.java:368)
        at hudson.model.ResourceController.execute(ResourceController.java:97)
        at hudson.model.Executor.run(Executor.java:456)
Finished: FAILURE

==> Build #1 finished: FAILURE

abc@DESKTOP-VAMK1SM MINGW64 ~/Downloads/ecommerce-platform/ecommerce-platform/scripts (master)
$
