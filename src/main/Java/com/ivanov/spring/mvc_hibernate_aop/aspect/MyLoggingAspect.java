package com.ivanov.spring.mvc_hibernate_aop.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyLoggingAspect {
    @Around("execution(* com.ivanov.spring.mvc_hibernate_aop.dao.*.*(..))")
    public Object arouundAllRepositoryMethodsAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable{
        MethodSignature methodSignature=(MethodSignature)proceedingJoinPoint.getSignature();
        String methodname=methodSignature.getName();
        System.out.println("Begin of "+methodname);
        Object targetMethodResult =proceedingJoinPoint.proceed();
        System.out.println("End of "+methodname);
        return  targetMethodResult;
    }
}
