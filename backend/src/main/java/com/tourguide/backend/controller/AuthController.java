package com.tourguide.backend.controller;

import com.tourguide.backend.entities.User;
import com.tourguide.backend.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthService authService;

    @PostMapping("/register")
    public ResponseEntity<User.AuthResponse> register(@RequestBody User.RegisterRequest req) {
        User.AuthResponse response = authService.register(req);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @PostMapping("/login")
    public ResponseEntity<User.AuthResponse> login(@RequestBody User.LoginRequest req) {
        User.AuthResponse response = authService.login(req);
        return ResponseEntity.ok(response);
    }
}
