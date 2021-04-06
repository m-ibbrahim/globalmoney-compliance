package com.globalmoney.api.compliance.config;

import com.globalmoney.api.compliance.controller.ComplianceController;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.Collections;

@Configuration
@EnableSwagger2
public class SpringFoxConfig
{
    @Bean
    public Docket api()
    {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage(ComplianceController.class.getPackage().getName()))
                .build();
    }

    private ApiInfo apiInfo()
    {
        return new ApiInfo("Compliance Service", "A service provides API's related to Compliance",
                "1.0", "Compliance Service T&C", author(), "Compliance Service License", null,
                Collections.emptyList());
    }

    private Contact author()
    {
        return new Contact("Mohammad Ibrahim Badsha", null,
                "m.ibbrahim@gmail.com");
    }
}
