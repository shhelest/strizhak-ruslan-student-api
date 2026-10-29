package kz.edu.iitu.strizhak_ruslan_student_api.repository;

import kz.edu.iitu.strizhak_ruslan_student_api.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Long> {
    boolean existsByEmail(String email);
}
