package com.rlap.et.category.repository;

import com.rlap.et.category.entity.EtTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface EtTypeRepository extends JpaRepository<EtTypeEntity, UUID> {
    List<EtTypeEntity> findAllByDeletedIsFalse();
}
