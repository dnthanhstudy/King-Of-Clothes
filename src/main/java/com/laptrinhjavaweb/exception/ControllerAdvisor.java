package com.laptrinhjavaweb.exception;

import com.laptrinhjavaweb.response.ErrorResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.ArrayList;
import java.util.List;


@ControllerAdvice
public class ControllerAdvisor extends ResponseEntityExceptionHandler {
	@ExceptionHandler(ClientError.class)
    public ResponseEntity<ErrorResponse> clientErrorException(
    		ClientError ex) {
		ErrorResponse error = new ErrorResponse();
        error.setError(ex.getMessage());
		List<String> details = new ArrayList<>();
		error.setDetails(details);
        return new ResponseEntity<>(error, HttpStatus.BAD_REQUEST);
    }
}
