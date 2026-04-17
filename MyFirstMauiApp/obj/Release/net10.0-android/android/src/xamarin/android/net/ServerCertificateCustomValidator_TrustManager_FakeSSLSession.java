package xamarin.android.net;


public class ServerCertificateCustomValidator_TrustManager_FakeSSLSession
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		javax.net.ssl.SSLSession
{

	public ServerCertificateCustomValidator_TrustManager_FakeSSLSession ()
	{
		super ();
		if (getClass () == ServerCertificateCustomValidator_TrustManager_FakeSSLSession.class) {
			mono.android.TypeManager.Activate ("Xamarin.Android.Net.ServerCertificateCustomValidator+TrustManager+FakeSSLSession, Mono.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public ServerCertificateCustomValidator_TrustManager_FakeSSLSession (java.security.cert.X509Certificate[] p0)
	{
		super ();
		if (getClass () == ServerCertificateCustomValidator_TrustManager_FakeSSLSession.class) {
			mono.android.TypeManager.Activate ("Xamarin.Android.Net.ServerCertificateCustomValidator+TrustManager+FakeSSLSession, Mono.Android", "Java.Security.Cert.X509Certificate[], Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public int getApplicationBufferSize ()
	{
		return n_getApplicationBufferSize ();
	}

	private native int n_getApplicationBufferSize ();

	public java.lang.String getCipherSuite ()
	{
		return n_getCipherSuite ();
	}

	private native java.lang.String n_getCipherSuite ();

	public long getCreationTime ()
	{
		return n_getCreationTime ();
	}

	private native long n_getCreationTime ();

	public boolean isValid ()
	{
		return n_isValid ();
	}

	private native boolean n_isValid ();

	public long getLastAccessedTime ()
	{
		return n_getLastAccessedTime ();
	}

	private native long n_getLastAccessedTime ();

	public java.security.Principal getLocalPrincipal ()
	{
		return n_getLocalPrincipal ();
	}

	private native java.security.Principal n_getLocalPrincipal ();

	public int getPacketBufferSize ()
	{
		return n_getPacketBufferSize ();
	}

	private native int n_getPacketBufferSize ();

	public java.lang.String getPeerHost ()
	{
		return n_getPeerHost ();
	}

	private native java.lang.String n_getPeerHost ();

	public int getPeerPort ()
	{
		return n_getPeerPort ();
	}

	private native int n_getPeerPort ();

	public java.security.Principal getPeerPrincipal ()
	{
		return n_getPeerPrincipal ();
	}

	private native java.security.Principal n_getPeerPrincipal ();

	public java.lang.String getProtocol ()
	{
		return n_getProtocol ();
	}

	private native java.lang.String n_getProtocol ();

	public javax.net.ssl.SSLSessionContext getSessionContext ()
	{
		return n_getSessionContext ();
	}

	private native javax.net.ssl.SSLSessionContext n_getSessionContext ();

	public byte[] getId ()
	{
		return n_getId ();
	}

	private native byte[] n_getId ();

	public java.security.cert.Certificate[] getLocalCertificates ()
	{
		return n_getLocalCertificates ();
	}

	private native java.security.cert.Certificate[] n_getLocalCertificates ();

	public javax.security.cert.X509Certificate[] getPeerCertificateChain ()
	{
		return n_getPeerCertificateChain ();
	}

	private native javax.security.cert.X509Certificate[] n_getPeerCertificateChain ();

	public java.security.cert.Certificate[] getPeerCertificates ()
	{
		return n_getPeerCertificates ();
	}

	private native java.security.cert.Certificate[] n_getPeerCertificates ();

	public java.lang.Object getValue (java.lang.String p0)
	{
		return n_getValue (p0);
	}

	private native java.lang.Object n_getValue (java.lang.String p0);

	public java.lang.String[] getValueNames ()
	{
		return n_getValueNames ();
	}

	private native java.lang.String[] n_getValueNames ();

	public void invalidate ()
	{
		n_invalidate ();
	}

	private native void n_invalidate ();

	public void putValue (java.lang.String p0, java.lang.Object p1)
	{
		n_putValue (p0, p1);
	}

	private native void n_putValue (java.lang.String p0, java.lang.Object p1);

	public void removeValue (java.lang.String p0)
	{
		n_removeValue (p0);
	}

	private native void n_removeValue (java.lang.String p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
