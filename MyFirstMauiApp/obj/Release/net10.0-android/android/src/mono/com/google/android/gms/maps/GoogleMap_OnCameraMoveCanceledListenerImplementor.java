package mono.com.google.android.gms.maps;


public class GoogleMap_OnCameraMoveCanceledListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnCameraMoveCanceledListener
{

	public GoogleMap_OnCameraMoveCanceledListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnCameraMoveCanceledListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnCameraMoveCanceledListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onCameraMoveCanceled ()
	{
		n_onCameraMoveCanceled ();
	}

	private native void n_onCameraMoveCanceled ();

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
