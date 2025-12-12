package com.tourguide.backend.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.jspecify.annotations.Nullable;

import java.time.Instant;

@Entity
@Table(name="users")
@Data
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String email;
    private String userName;
    @Column(nullable = false)
    private String password;
    @Column(nullable = false)
    private String role;
    private Instant createdAt = Instant.now();

    // RegisterRequest.java
    public record RegisterRequest(@NotBlank String name, String userName, @Email String email,@NotBlank String password,@NotBlank String role) {


    }

    // LoginRequest.java
    public record LoginRequest(String email, String password) {}


    // AuthResponse.java
    public record AuthResponse(Long id, String name, String email, String role) {}

}



