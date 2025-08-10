package com.rlap.et.category.web.controllers;


import com.rlap.et.category.service.CategoryService;
import com.rlap.et.common.core.Response;
import com.rlap.et.common.dto.CategoryInfo;
import com.rlap.et.common.dto.TypeCategorySubCategoryRequest;
import com.rlap.et.common.dto.TypeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("${api.version.v1}/classification/type")
public class TypeController {

    private final CategoryService categoryService;

    @Autowired
    public TypeController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }


    @GetMapping
    public Response<List<TypeInfo>> getAllTypes() {
        List<TypeInfo> types = categoryService.getAllTypes();
        return new Response<>(200, "Types fetched successfully", types, "Success");
    }

    @GetMapping("/{id}")
    public Response<CategoryInfo> getTypeInfoById(@PathVariable UUID id) {
        CategoryInfo type = categoryService.getTypeInfoById(id);

        return new Response<>(200, "Type fetched successfully", type, "Success");

    }

    @PostMapping
    public Response<Void> createType(@RequestBody TypeCategorySubCategoryRequest request) {
        categoryService.createType(request);
        return new Response<>(201, "Type created successfully", null, "Success");
    }

    @PutMapping("/{id}")
    public Response<Void> updateType(@PathVariable UUID id, @RequestBody TypeCategorySubCategoryRequest request) {
        categoryService.updateType(id, request);
        return new Response<>(200, "Type updated successfully", null, "Success");
    }

    @DeleteMapping("/{id}")
    public Response<Void> deleteType(@PathVariable UUID id) {
        categoryService.deleteType(id);
        return new Response<>(200, "Type deleted successfully", null, "Success");
    }






}
