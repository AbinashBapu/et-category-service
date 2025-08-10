package com.rlap.et.category.service.impl;

import com.rlap.et.category.entity.EtCategoryEntity;
import com.rlap.et.category.entity.EtSubCategoryEntity;
import com.rlap.et.category.entity.EtTypeEntity;
import com.rlap.et.category.repository.EtCategoryRepository;
import com.rlap.et.category.repository.EtSubCategoryRepository;
import com.rlap.et.category.repository.EtTypeRepository;
import com.rlap.et.category.service.CategoryService;
import com.rlap.et.common.dto.CategoryInfo;
import com.rlap.et.common.dto.SubCategoryInfo;
import com.rlap.et.common.dto.TypeCategorySubCategoryRequest;
import com.rlap.et.common.dto.TypeInfo;
import com.rlap.et.common.exception.ResourceNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class CategoryServiceImpl implements CategoryService {

    private static final Logger logger = LoggerFactory.getLogger(CategoryService.class);
    
    private final EtTypeRepository etTypeRepository;
    private final EtCategoryRepository etCategoryRepository;
    private final EtSubCategoryRepository etSubCategoryRepository;

    @Autowired
    public CategoryServiceImpl(EtTypeRepository etTypeRepository, EtCategoryRepository etCategoryRepository, EtSubCategoryRepository etSubCategoryRepository) {
        this.etTypeRepository = etTypeRepository;
        this.etCategoryRepository = etCategoryRepository;
        this.etSubCategoryRepository = etSubCategoryRepository;
    }

    @Override
    public List<CategoryInfo> getAllCategories() {
        List<EtCategoryEntity> categoryEntityList = etCategoryRepository.findAllByDeletedIsFalse();

        if(categoryEntityList.isEmpty()){
            return List.of();
        }
        return categoryEntityList.stream().filter(categoryEntity->categoryEntity.isActive() && !categoryEntity.isDeleted()).map(this::getCategoryInfo).toList();
    }

    @Override
    public CategoryInfo getCategoryInfoById(UUID id) {
        Optional<EtCategoryEntity> categoryEntity = etCategoryRepository.findCategoryByIdAndActiveIsTrueAndDeletedFalse(id);
        return categoryEntity.map(this::getCategoryInfo).orElse(null);

    }

    @Override
    public void createCategory(TypeCategorySubCategoryRequest request) {

    }

    @Override
    public void updateCategory(UUID id, TypeCategorySubCategoryRequest request) {

    }

    @Override
    public void deleteCategory(UUID id) {

    }

    @Override
    public SubCategoryInfo getSubCategoryInfoByCategoryAndSubCategoryId(UUID categoryId, UUID subCategoryId) {

        EtSubCategoryEntity subCategoryEntity = etSubCategoryRepository.findSubCategoryWithCategoryIfActiveAndNotDeleted(subCategoryId,categoryId);
        if(subCategoryEntity == null){
            logger.info("Category not found: CategoryId: {} :: subCategoryId: {}",categoryId,subCategoryId);
            throw new ResourceNotFoundException("SubCategory not found!");
        }

        SubCategoryInfo subCategoryInfo = new SubCategoryInfo();
        subCategoryInfo.setPkSubCategoryId(subCategoryEntity.getPkSubCategoryId());
        subCategoryInfo.setLabel(subCategoryEntity.getLabel());
        subCategoryInfo.setDescription(subCategoryEntity.getDescription());
        subCategoryInfo.setActive(subCategoryEntity.isActive());
        subCategoryInfo.setDeleted(subCategoryEntity.isDeleted());

        return subCategoryInfo;
    }

    @Override
    public List<SubCategoryInfo> getAllSubCategories() {
        List<EtSubCategoryEntity> subCategoryEntities = etSubCategoryRepository.findAllByDeletedIsFalse();

        if(subCategoryEntities.isEmpty()){
            return List.of();
        }

        List<CategoryInfo> categories = getAllCategories();
        Map<UUID, CategoryInfo> catgoryInfoMap = categories.stream().collect(Collectors.toMap(CategoryInfo::getCategoryId, category -> category));


        return subCategoryEntities.stream().map(subCategoryEntity -> {
            SubCategoryInfo subCategoryInfo = new SubCategoryInfo();
            subCategoryInfo.setPkSubCategoryId(subCategoryEntity.getPkSubCategoryId());
            subCategoryInfo.setLabel(subCategoryEntity.getLabel());
            subCategoryInfo.setDescription(subCategoryEntity.getDescription());
            subCategoryInfo.setActive(subCategoryEntity.isActive());
            subCategoryInfo.setDeleted(subCategoryEntity.isDeleted());

            subCategoryInfo.setCategoryInfo(catgoryInfoMap.get(subCategoryEntity.getCategoryEntity().getPkCategoryId()));
            return subCategoryInfo;
        }).toList();

    }

    @Override
    public SubCategoryInfo getSubCategoryInfoById(UUID id) {
        return null;
    }

    @Override
    public void createSubCategory(TypeCategorySubCategoryRequest request) {

    }

    @Override
    public void updateSubCategory(UUID id, TypeCategorySubCategoryRequest request) {

    }

    @Override
    public void deleteSubCategory(UUID id) {

    }

    @Override
    public List<TypeInfo> getAllTypes() {

        List<EtTypeEntity> typeEntityList = etTypeRepository.findAllByDeletedIsFalse();

        if(typeEntityList.isEmpty()){
            return List.of();
        }

        return typeEntityList.stream().map(typeEntity -> {
            TypeInfo typeInfo = new TypeInfo();
            typeInfo.setTypeId(typeEntity.getTypeId());
            typeInfo.setTypeName(typeEntity.getTypeName());
            typeInfo.setTypeDescription(typeEntity.getTypeDescription());
            typeInfo.setActive(typeEntity.isActive());
            typeInfo.setDeleted(typeEntity.isDeleted());
            return typeInfo;
        }).toList();

    }

    @Override
    public CategoryInfo getTypeInfoById(UUID id) {
        return null;
    }

    @Override
    public void createType(TypeCategorySubCategoryRequest request) {

    }

    @Override
    public void updateType(UUID id, TypeCategorySubCategoryRequest request) {

    }

    @Override
    public void deleteType(UUID id) {

    }



    private CategoryInfo getCategoryInfo(EtCategoryEntity categoryEntity) {
        CategoryInfo categoryInfo = new CategoryInfo();
        categoryInfo.setCategoryId(categoryEntity.getPkCategoryId());
        categoryInfo.setLabel(categoryEntity.getLabel());
        categoryInfo.setDescription(categoryEntity.getDescription());
        categoryInfo.setActive(categoryEntity.isActive());
        categoryInfo.setDeleted(categoryEntity.isDeleted());

        EtTypeEntity categoryType = categoryEntity.getType();
        TypeInfo typeInfo = new TypeInfo();
        typeInfo.setTypeId(categoryType.getTypeId());
        typeInfo.setTypeName(categoryType.getTypeName());
        typeInfo.setTypeDescription(categoryType.getTypeDescription());
        typeInfo.setActive(categoryType.isActive());
        typeInfo.setDeleted(categoryType.isDeleted());

        categoryInfo.setType(typeInfo);


        List<SubCategoryInfo> subCategoryInfoList = categoryEntity.getSubCategories().stream().map(subCategoryEntity -> {
            SubCategoryInfo subCategoryInfo = new SubCategoryInfo();
            subCategoryInfo.setPkSubCategoryId(subCategoryEntity.getPkSubCategoryId());
            subCategoryInfo.setLabel(subCategoryEntity.getLabel());
            subCategoryInfo.setDescription(subCategoryEntity.getDescription());
            subCategoryInfo.setActive(subCategoryEntity.isActive());
            subCategoryInfo.setDeleted(subCategoryEntity.isDeleted());
            return subCategoryInfo;
        }).toList();

        categoryInfo.setSubCategoryInfos(subCategoryInfoList);

        return categoryInfo;
    }

}
