package com.koala.platform.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "brief", schema = "public", catalog = "simplone")
public class BriefEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private Long id;
    @Basic
    @Column(name = "context")
    private String context;
    @Basic
    @Column(name = "deadline")
    private Long deadline;
    @Basic
    @Column(name = "idp")
    private Long idp;
    @ManyToOne
    @JoinColumns({@JoinColumn(name = "idp", referencedColumnName = "id", insertable = false, updatable = false), @JoinColumn(name = "idp", referencedColumnName = "id")})
    private PromotionEntity promotionByIdp;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Long getDeadline() {
        return deadline;
    }

    public void setDeadline(Long deadline) {
        this.deadline = deadline;
    }

    public Long getIdp() {
        return idp;
    }

    public void setIdp(Long idp) {
        this.idp = idp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BriefEntity that = (BriefEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (context != null ? !context.equals(that.context) : that.context != null) return false;
        if (deadline != null ? !deadline.equals(that.deadline) : that.deadline != null) return false;
        if (idp != null ? !idp.equals(that.idp) : that.idp != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (context != null ? context.hashCode() : 0);
        result = 31 * result + (deadline != null ? deadline.hashCode() : 0);
        result = 31 * result + (idp != null ? idp.hashCode() : 0);
        return result;
    }

    public PromotionEntity getPromotionByIdp() {
        return promotionByIdp;
    }

    public void setPromotionByIdp(PromotionEntity promotionByIdp) {
        this.promotionByIdp = promotionByIdp;
    }
}
