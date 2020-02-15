package com.vnptepay.utilities;

import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;

import com.vnptepay.config.*;

public class FileLogger {
	static Logger logger;
	rootConfig root = new rootConfig();

	public FileLogger(Class clazz) {
		logger = Logger.getLogger(clazz);
		DOMConfigurator.configure(root.getRoot() + "/config/log4j.xml");
	}

	public void info(String input) {
		logger.info(input);
	}

	public void info(String input, Throwable e) {
		logger.info(input, e);
	}

	public void fatal(String input) {
		logger.fatal(input);
	}

	public void fatal(String input, Throwable e) {
		logger.fatal(input, e);
	}
}
