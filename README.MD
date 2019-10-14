# Issue 592

Link to issue [[Question] [Possible Issue] exclude-by-attributes does not work for classes and globals](https://github.com/tonerdo/coverlet/issues/592)

## Overview

After trying different ways to make it work it seems that the parameter `--exclude-by-attribute` can hold only one attribute 
and not a comma separated list of attributes. 

So instead of: `--exclude-by-attribute 'Obsolete,GeneratedCode,CompilerGenerated'`
we should do `--exclude-by-attribute 'Obsolete' --exclude-by-attribute'GeneratedCode' --exclude-by-attribute 'CompilerGenerated'`

## Steps to reproduce

1. Build the solution.
2. Run [install-tools.ps1](./install-tools.ps1) so that you will download the coverlet global tool and report generator
3. Run [run-coverlet.ps1](./run-coverlet.ps1) as is taken from the example [Documentation/Globaltool.md](https://github.com/tonerdo/coverlet/blob/master/Documentation/GlobalTool.md#excluding-from-coverage)

**Expected result:** Should exclude the classes/methods that use the attributes. 

**Actual result:** None of the attributes are being used to remove the classes/method.

## Actions

We should update the documentation so that it is aligned with the expected way of using the parameter `--exclude-by-attribute`
