package ua.lviv.dvoryky;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

import java.security.Security;

// TODO
@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
public class DvorykyApplication {

	public static void main(String[] args) {
		SpringApplication.run(DvorykyApplication.class, args);
	}
}
