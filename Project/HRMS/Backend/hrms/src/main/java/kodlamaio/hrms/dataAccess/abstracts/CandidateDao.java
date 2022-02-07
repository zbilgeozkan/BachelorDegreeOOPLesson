package kodlamaio.hrms.dataAccess.abstracts;

import kodlamaio.hrms.core.entities.Candidate;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CandidateDao extends JpaRepository<Candidate, Integer> {
    boolean existsCandidateByIdentityId(String identityId);
    Candidate getById(int id);
}
