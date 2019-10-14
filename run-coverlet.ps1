# Will not apply any of the attributes  this way of using the the exclude-by-attribute is being used in the examples: https://github.com/tonerdo/coverlet/blob/master/Documentation/GlobalTool.md#excluding-from-coverage
& coverlet ".\XUnitProject\bin\Debug\netcoreapp2.2\XUnitProject.dll" --target "dotnet" --targetargs "test .\XUnitProject\XUnitProject.csproj --no-build -c Debug" `
	--exclude-by-attribute 'Obsolete,GeneratedCode,CompilerGenerated'  --format opencover

# This will work
# & coverlet ".\XUnitProject\bin\Debug\netcoreapp2.2\XUnitProject.dll" --target "dotnet" --targetargs "test .\XUnitProject\XUnitProject.csproj --no-build -c Debug" `
# 	--exclude-by-attribute 'Obsolete' --exclude-by-attribute'GeneratedCode' --exclude-by-attribute 'CompilerGenerated'  --format opencover
	
& reportgenerator -reports:coverage.opencover.xml -targetdir:.\cover | Out-File .\coverage.log -Append

& start .\cover\index.htm