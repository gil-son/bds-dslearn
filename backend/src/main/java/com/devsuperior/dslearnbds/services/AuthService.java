package com.devsuperior.dslearnbds.services;


import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.common.exceptions.UnauthorizedClientException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
This class helps to check if it is user or admin.
Remembering that each user can see only their content,
so they cannot access the user/id of another user and see the content. With excess of admin
 */
@Service
public class AuthService {

    @Autowired
    private UserRepository userRepository;

    // Cookie
    // Who is the authenticated user?
    // After authentication the user id is saved in context. So is possibly caught that user

    @Transactional(readOnly = true)
    public User authenticated(){
        // Case don't exist the user
        try {
            String username = SecurityContextHolder.getContext().getAuthentication().getName();
            return userRepository.findByEmail(username);
        }
        catch (Exception e){
            throw new UnauthorizedClientException("Invalid user");
        }
    }

    // Verify if userid is different authenticated id and user is different the admin role
    public void validateSelfOrAdmin(Long userId){
        User user = authenticated();
        if (!user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN")){
            throw new ForbiddenException("Access denied");
        }
    }
}
