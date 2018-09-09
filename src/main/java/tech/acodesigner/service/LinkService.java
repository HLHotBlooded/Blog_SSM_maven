package tech.acodesigner.service;

import tech.acodesigner.dto.OperationResult;
import tech.acodesigner.entity.Link;

import java.util.List;


public interface LinkService {

    public OperationResult<Link> getLinkById(int linkId);

    public List<Link> getLinks();

    public OperationResult saveLink(Link link);

    public OperationResult updateLink(Link link);

    public OperationResult deleteLink(int linkId);

}
