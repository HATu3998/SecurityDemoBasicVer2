package com.spring.security;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserBuilder userBuilder = User.withDefaultPasswordEncoder();
        
        if (username.equals("john")) {
            return userBuilder
                .username("john")
                .password("123456")
                .roles("employee")
                .build();
        } else if (username.equals("mary")) {
            return userBuilder
                .username("mary")
                .password("123456")
                .roles("manager")
                .build();
        } else if (username.equals("susan")) {
            return userBuilder
                .username("susan")
                .password("123456")
                .roles("admin")
                .build();
        } else {
            throw new UsernameNotFoundException("User not found.");
        }
    }
}
