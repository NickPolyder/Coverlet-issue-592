using System;

namespace CoverletTryout
{
	class Program
	{
		static void Main(string[] args)
		{
			Console.WriteLine(new ClassThatUsesResource().GetResource());
		}
	}
}
