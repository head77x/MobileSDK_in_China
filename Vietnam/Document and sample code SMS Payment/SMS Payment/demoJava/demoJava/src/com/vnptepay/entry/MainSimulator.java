package com.vnptepay.entry;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import com.sun.net.httpserver.HttpServer;
import com.vnptepay.utilities.Classloader;

public class MainSimulator {



	public static void main(String[] args) {
		System.out.println("Start load lib");
		Classloader.loadLib();
		HttpServer server;
		try {
			server = HttpServer.create(new InetSocketAddress(9999), 0);
			server.createContext("/smsApi", new PartnerreceiverSimulator());
			LinkedBlockingQueue queue = new LinkedBlockingQueue();
			ThreadPoolExecutor executor = new ThreadPoolExecutor(10, 10, 30, TimeUnit.SECONDS, queue);
			server.setExecutor(executor); // creates a default executor
			server.start();		
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
