package com.devsuperior.dslearnbds.resources;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devsuperior.dslearnbds.dto.UserDTO;
import com.devsuperior.dslearnbds.services.UserService;

@RestController
@RequestMapping(value = "/users")

public class UserResource {

    private static Logger logger = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserService service;

//    @GetMapping(value = "/{id}")
//    public ResponseEntity<UserDTO> findById(@PathVariable Long id){
//        UserDTO dto = service.findById(id);
//        return ResponseEntity.ok().body(dto);
//    }


    @GetMapping(value = "/{id}")
    public ResponseEntity<UserDTO> findById(@PathVariable Long id){
        UserDTO dto = service.findById(id);
        logger.info("DTO: ", dto);
        return ResponseEntity.ok().body(dto);
    }
}
