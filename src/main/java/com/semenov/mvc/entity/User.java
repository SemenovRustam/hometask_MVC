package com.semenov.mvc.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Entity
@Table(name = "users")
@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "full_name")
    @NotEmpty
    @Pattern(regexp = "[a-zA-Z]{2,}", message = "Name length cannot be less than 2 characters. The name can consist only of latin letters.")
    private String fullName;

    @Column
    @Email(message = "invalid mail")
    private String email;

    @Column
    @NotNull
    private Long phone;

    @Column
    @NotBlank(message = "Address must not be empty.")
    private String address;

    @Column(name = "date_of_birth")
    @Past(message = "Date cannot be future")
    private LocalDate dateOfBirth;
}
