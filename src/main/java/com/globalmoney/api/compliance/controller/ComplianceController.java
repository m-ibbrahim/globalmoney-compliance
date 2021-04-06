package com.globalmoney.api.compliance.controller;


import io.swagger.annotations.ApiOperation;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/compliance")
public class ComplianceController
{
    @GetMapping(path = "/user-identification/{document-type}")
    @ApiOperation(value = "Returns the users Identification details")
    public ResponseEntity getIdentificationDetails()
    {
        return null;
    }

    @PostMapping(path = "/user-identification/{document-type}")
    @ApiOperation(value = "Adds the users Identification details")
    public ResponseEntity addIdentificationDetails()
    {
        return null;
    }

    @PutMapping(path = "/user-identification/{document-type}")
    @ApiOperation(value = "Updates the users Identification details")
    public ResponseEntity updateIdentificationDetails()
    {
        return null;
    }

    @PostMapping(path = "/user-identification/validate/{document-type}")
    @ApiOperation(value = "Validates the users Identification details")
    public ResponseEntity validateIdentificationDetails()
    {
        return ResponseEntity.ok("");
    }
}
