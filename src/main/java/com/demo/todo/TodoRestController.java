package com.demo.todo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TodoRestController {

	@Autowired
	TodoService service;
	
	@RequestMapping(value = "/todos", method = RequestMethod.GET)
	public List<Todo> getAllTodos(){
		return service.retrieveTodos("Chetan");
	}
}
