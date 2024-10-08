package com.openai.security.api.model;

import jakarta.validation.constraints.NotBlank;

public record LoginRequest(
        @NotBlank(message = "Email is mandatory.") String email,
        @NotBlank(message = "Password is mandatory.") String password) {
}