package br.edu.utfpr.pb.pw25s.server.generic;

import java.util.List;
import java.util.Optional;

public abstract class IService <K>{

    public abstract List<K> getAll();
    public abstract Optional<K> getById(Long id);
    public abstract K add(K model);
    public abstract void delete(Long id);
    public abstract K update(K model, Long id);
}