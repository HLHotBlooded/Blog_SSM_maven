package tech.acodesigner.service;

import tech.acodesigner.dto.AboutDto;
import tech.acodesigner.dto.OperationResult;


public interface AboutService {

    public AboutDto getAbout();

    public OperationResult updateAbout(String content);

}
