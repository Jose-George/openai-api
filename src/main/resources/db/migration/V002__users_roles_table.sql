CREATE TABLE IF NOT EXISTS `roles` (
    `role_id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS `users_roles` (
    `user_id` BIGINT,
    `role_id` BIGINT,
    PRIMARY KEY (`user_id`, `role_id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`role_id`) REFERENCES `roles`(`role_id`) ON DELETE CASCADE
);
