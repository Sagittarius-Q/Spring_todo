package com.simple.todo.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.AssertFalse;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Table(name = "todo_table")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode(of = {"id"})
public class Todo {
    @Id
    @SequenceGenerator(name = "todo", allocationSize = 1)
    @GeneratedValue(generator = "todo", strategy = GenerationType.SEQUENCE)
    private long id;
    @NotNull
    private String name;
    @NotNull
    private String description;
    private Date targetDate;
    @AssertFalse
    private boolean status;

    @ManyToOne
    @JoinColumn(name = "users_todolist")
    private User user;

    public boolean isDone() {
        return status;
    }
}
