package com.vnptepay.config;

public class rootConfig {
	public rootConfig() {
		super();
	try {
		this.root = this.getClass().getClassLoader().getResource("/").toURI().getPath();
		root = root.replaceAll("classes/", "");	
//		System.out.println(root);
	} catch (Exception e) {
		this.root = ".";
		// TODO Auto-generated catch block
		//e.printStackTrace();
	}
	}


	public String getRoot() {
		return root;
	}

	private String root;
	
}
