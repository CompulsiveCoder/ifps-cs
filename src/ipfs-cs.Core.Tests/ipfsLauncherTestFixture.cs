﻿using System;
using NUnit.Framework;
using System.Threading;

namespace ipfs.Core.Tests
{
	[TestFixtureAttribute(Category="Unit")]
	public class ipfsLauncherTestFixture : BaseTestFixture
	{
		// TODO: This test is slow so it's disabled
		//[Test]
		public void Test_Start()
		{
			using (var launcher = new ipfsDaemonLauncher ()) {
				launcher.Start ();
				Thread.Sleep (5000);
				launcher.Close ();
			}
		}
	}
}

