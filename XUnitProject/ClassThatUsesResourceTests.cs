using System;
using CoverletTryout;
using Xunit;

namespace XUnitProject
{
	public class ClassThatUsesResourceTests
	{
		[Fact]
		public void ClassThatUsesResource_ShouldReturnResource()
		{
			var sut = new ClassThatUsesResource();

			var result = sut.GetResource();

			Assert.Equal(Validation.TestingProperty,result);
		}
	}
}
