package com.seaove.util;

import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Platform;

public class ContextUtil {
	public static String getRoot() {
		String path = null;
		try {
			path = FileLocator.toFileURL(
					Platform.getBundle("com.seaove.rap").getEntry("")).getPath();
//			path = isLinuxReturnPerfixPath()+path.substring(path.indexOf("/") + 1, path.length());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}
}
