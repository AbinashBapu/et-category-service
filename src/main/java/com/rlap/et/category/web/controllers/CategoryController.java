package com.rlap.et.category.web.controllers;

import com.rlap.et.category.service.CategoryService;
import com.rlap.et.common.core.Response;
import com.rlap.et.common.dto.CategoryInfo;
import com.rlap.et.common.dto.TypeCategorySubCategoryRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("${api.version.v1}/categories")
public class CategoryController {
    private final CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }


    @GetMapping
    public Response<List<CategoryInfo>> getAllCategories() {
        List<CategoryInfo> allCategories = categoryService.getAllCategories();
        return new Response<>(200, "Category fetched successfully", allCategories, "Success");
    }

    @GetMapping("/{id}")
    public Response<CategoryInfo> getCategoryInfoById(@PathVariable UUID id) {
        CategoryInfo category = categoryService.getCategoryInfoById(id);
        return new Response<>(200, "Category fetched successfully", category, "Success");
    }

    @PostMapping
    public Response<Void> createCategory(@RequestBody TypeCategorySubCategoryRequest request) {
        categoryService.createCategory(request);
        return new Response<>(201, "Category created successfully", null, "Success");
    }

    @PutMapping("/{id}")
    public Response<Void> updateCategory(@PathVariable UUID id, @RequestBody TypeCategorySubCategoryRequest request) {
        categoryService.updateCategory(id, request);
        return new Response<>(200, "Category updated successfully", null, "Success");
    }

    @DeleteMapping("/{id}")
    public Response<Void> deleteCategory(@PathVariable UUID id) {
        categoryService.deleteCategory(id);
        return new Response<>(200, "Category deleted successfully", null, "Success");
    }

    // Type Endpoints


}
