using System;
using System.Threading;

namespace CoverletTryout
{
	public class ObsoleteMethod
	{
		public string Property { get; set; }

		[Obsolete]
		public void ObsoleteDisplay() => Thread.Sleep(2000);
	}
}