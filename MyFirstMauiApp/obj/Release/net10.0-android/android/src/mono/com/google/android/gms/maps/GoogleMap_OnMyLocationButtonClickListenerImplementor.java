package mono.com.google.android.gms.maps;


public class GoogleMap_OnMyLocationButtonClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnMyLocationButtonClickListener
{

	public GoogleMap_OnMyLocationButtonClickListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnMyLocationButtonClickListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnMyLocationButtonClickListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public boolean onMyLocationButtonClick ()
	{
		return n_onMyLocationButtonClick ();
	}

	private native boolean n_onMyLocationButtonClick ();

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
