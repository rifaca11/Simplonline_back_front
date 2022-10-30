package com.koala.platform.Entities;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
@Table(name = "promotion", schema = "public", catalog = "simplone")
public class PromotionEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private Long id;
    @Basic
    @Column(name = "name")
    private String name;
    @Basic
    @Column(name = "status")
    private Long status;
    @Basic
    @Column(name = "idf")
    private Long idf;
    @OneToMany(mappedBy = "promotionByIdp")
    private Collection<ApprenantEntity> apprenantsById;
    @OneToMany(mappedBy = "promotionByIdp")
    private Collection<BriefEntity> briefsById;
    @ManyToOne
    @JoinColumns({@JoinColumn(name = "idf", referencedColumnName = "id", insertable = false, updatable = false), @JoinColumn(name = "idf", referencedColumnName = "id")})
    private FormateurEntity formateurByIdf;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

    public Long getIdf() {
        return idf;
    }

    public void setIdf(Long idf) {
        this.idf = idf;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PromotionEntity that = (PromotionEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (status != null ? !status.equals(that.status) : that.status != null) return false;
        if (idf != null ? !idf.equals(that.idf) : that.idf != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (idf != null ? idf.hashCode() : 0);
        return result;
    }

    public Collection<ApprenantEntity> getApprenantsById() {
        return apprenantsById;
    }

    public void setApprenantsById(Collection<ApprenantEntity> apprenantsById) {
        this.apprenantsById = apprenantsById;
    }

    public Collection<BriefEntity> getBriefsById() {
        return briefsById;
    }

    public void setBriefsById(Collection<BriefEntity> briefsById) {
        this.briefsById = briefsById;
    }

    public FormateurEntity getFormateurByIdf() {
        return formateurByIdf;
    }

    public void setFormateurByIdf(FormateurEntity formateurByIdf) {
        this.formateurByIdf = formateurByIdf;
    }
}
