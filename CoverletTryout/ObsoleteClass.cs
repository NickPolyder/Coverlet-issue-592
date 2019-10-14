using System;

namespace CoverletTryout
{
	[Obsolete]
	public class ObsoleteClass
	{
		public string Property { get; set; }

		public void Display()
		{
			Console.WriteLine($"{nameof(Property)} = {Property}");
		}
	}
}