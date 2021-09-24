package day1;

import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MyUser {
	private String name;
	private int age;
	private String location;
}