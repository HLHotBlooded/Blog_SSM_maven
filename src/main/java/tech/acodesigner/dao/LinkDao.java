package tech.acodesigner.dao;

import tech.acodesigner.entity.Link;

import java.util.List;


public interface LinkDao {

    public Link getLinkById(int linkId);

    public List<Link> getLinks();

    public int saveLink(Link link);

    public int updateLink(Link link);

    public int deleteLink(int linkId);

}
