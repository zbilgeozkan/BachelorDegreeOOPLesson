package kodlamaio.hrms.core.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import kodlamaio.hrms.entities.concretes.Cv;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Value;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.List;



@Table(name = "candidates")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@PrimaryKeyJoinColumn(name="candidate_id",referencedColumnName = "id")
@EqualsAndHashCode(callSuper = true)
public class Candidate extends User {

    @NotEmpty(message = "Ad girilmesi gerekir")
    @Column(name = "first_name" , length = 100)
    private String firstName;

    @NotEmpty(message = "Soyadı girilmesi gerekir")
    @Column(name = "last_name" , length = 100)
    private String lastName;

    @NotEmpty(message = "Kimlik bilgisi girilmesi gerekir")
    @Column(name = "identity_id" , length = 11)
    private String identityId;

    @Positive(message = "Sıfırdan büyük olmalıdır")
    @NotNull(message="Doğum tarihi sıfırdan büyük olmak zorundadır")
    @Column(name = "birth_year" , length = 4)
    private int birthYear;

    @JsonIgnore
    @OneToMany(mappedBy = "candidate",
            cascade = CascadeType.ALL,
            orphanRemoval = true ,
            fetch = FetchType.LAZY)
    private List<Cv> cv;


}
