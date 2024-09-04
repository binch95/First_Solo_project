package com.example.project.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class board {

	private int id;
	private String code;
	private String name;
	private boolean delStatus;
	private String delDate;
}
