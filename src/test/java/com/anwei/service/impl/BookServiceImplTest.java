package com.anwei.service.impl;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.anwei.dto.AppointExecution;
import com.anwei.service.BookService;
import com.anwei.BaseTest;

public class BookServiceImplTest extends BaseTest {

	@Autowired
	private BookService bookService;

	@Test
	public void testAppoint() throws Exception {
		long bookId = 1001;
		long studentId = 12345678910L;
		AppointExecution execution = bookService.appoint(bookId, studentId);
		System.out.println(execution);
	}

}
