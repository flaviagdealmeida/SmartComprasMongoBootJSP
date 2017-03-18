package br.org.smartcompras.models;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

public class MongoUserDetails implements org.springframework.security.core.userdetails.UserDetails {

	protected static boolean ACCOUNT_NON_EXPIRED = true;
	protected static boolean ACCOUNT_NON_LOCKED = true;
	protected static boolean CREDENTIALS_NON_EXPIRED = true;
	protected static boolean ENABLED = true;

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;

	private Boolean accountNonExpired = ACCOUNT_NON_EXPIRED;
	private Boolean accountNonLocked = ACCOUNT_NON_LOCKED;
	private Boolean credentialsNonExpired = CREDENTIALS_NON_EXPIRED;
	private Boolean enabled = ENABLED;

	private Collection<GrantedAuthority> grantedAuthorities;
	// private List<GrantedAuthority> grantedAuthorities;

	public MongoUserDetails(String username, String password) {
		super();
		this.username = username;
		this.password = password;
		//this.grantedAuthorities = AuthorityUtils.createAuthorityList(authorities);
	}

	public void setAuthorities(Collection<GrantedAuthority> grantedAuthorities) {
		this.grantedAuthorities = grantedAuthorities;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		if (grantedAuthorities == null)
			grantedAuthorities = new ArrayList<GrantedAuthority>();
		return grantedAuthorities;
		// return grantedAuthorities;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	public Boolean getAccountNonExpired() {
		return accountNonExpired;
	}

	public void setAccountNonExpired(Boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Boolean getAccountNonLocked() {
		return accountNonLocked;
	}

	public void setAccountNonLocked(Boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}

	public Boolean getCredentialsNonExpired() {
		return credentialsNonExpired;
	}

	public void setCredentialsNonExpired(Boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}

}
